#include "who_camera.h"
#include "who_lcd.h"
#include "esp_log.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"

static const char *TAG = "app_main";
static QueueHandle_t xQueueAIFrame = NULL;

extern "C" 
void app_main()
{

    xQueueAIFrame = xQueueCreate(2, sizeof(camera_fb_t *));
    if (xQueueAIFrame == NULL) {
        esp_restart();
    }

    register_camera(PIXFORMAT_RGB565, FRAMESIZE_QVGA, 2, xQueueAIFrame);//core 1    
    register_lcd(xQueueAIFrame, NULL, true);// core 1

}
