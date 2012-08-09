.class Landroid/override/demo/DemoOverrideActivity$1;
.super Ljava/lang/Object;
.source "DemoOverrideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/override/demo/DemoOverrideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/override/demo/DemoOverrideActivity;


# direct methods
.method constructor <init>(Landroid/override/demo/DemoOverrideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Landroid/override/demo/DemoOverrideActivity$1;->this$0:Landroid/override/demo/DemoOverrideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/override/demo/DemoOverrideActivity$1;->this$0:Landroid/override/demo/DemoOverrideActivity;

    iget-object v0, v0, Landroid/override/demo/DemoOverrideActivity;->locMan:Landroid/override/OverrideLocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/override/demo/DemoOverrideActivity$1;->this$0:Landroid/override/demo/DemoOverrideActivity;

    iget-object v5, v5, Landroid/override/demo/DemoOverrideActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/override/OverrideLocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 49
    iget-object v0, p0, Landroid/override/demo/DemoOverrideActivity$1;->this$0:Landroid/override/demo/DemoOverrideActivity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/override/demo/DemoOverrideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    .line 50
    .local v7, sensorManager:Landroid/hardware/SensorManager;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    .line 51
    .local v6, accelerometerSensor:Landroid/hardware/Sensor;
    iget-object v0, p0, Landroid/override/demo/DemoOverrideActivity$1;->this$0:Landroid/override/demo/DemoOverrideActivity;

    iget-object v0, v0, Landroid/override/demo/DemoOverrideActivity;->senMan:Landroid/override/OverrideSensorManager;

    iget-object v1, p0, Landroid/override/demo/DemoOverrideActivity$1;->this$0:Landroid/override/demo/DemoOverrideActivity;

    iget-object v1, v1, Landroid/override/demo/DemoOverrideActivity;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v6, v2}, Landroid/override/OverrideSensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 52
    return-void
.end method
