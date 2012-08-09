.class public Landroid/override/demo/DemoOverrideActivity;
.super Landroid/app/Activity;
.source "DemoOverrideActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DemoOverrideActivity"


# instance fields
.field locMan:Landroid/override/OverrideLocationManager;

.field locationListener:Landroid/location/LocationListener;

.field onClickListener:Landroid/view/View$OnClickListener;

.field senMan:Landroid/override/OverrideSensorManager;

.field sensorEventListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Landroid/override/demo/DemoOverrideActivity$1;

    invoke-direct {v0, p0}, Landroid/override/demo/DemoOverrideActivity$1;-><init>(Landroid/override/demo/DemoOverrideActivity;)V

    iput-object v0, p0, Landroid/override/demo/DemoOverrideActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 55
    new-instance v0, Landroid/override/demo/DemoOverrideActivity$2;

    invoke-direct {v0, p0}, Landroid/override/demo/DemoOverrideActivity$2;-><init>(Landroid/override/demo/DemoOverrideActivity;)V

    iput-object v0, p0, Landroid/override/demo/DemoOverrideActivity;->locationListener:Landroid/location/LocationListener;

    .line 79
    new-instance v0, Landroid/override/demo/DemoOverrideActivity$3;

    invoke-direct {v0, p0}, Landroid/override/demo/DemoOverrideActivity$3;-><init>(Landroid/override/demo/DemoOverrideActivity;)V

    iput-object v0, p0, Landroid/override/demo/DemoOverrideActivity;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Landroid/override/demo/DemoOverrideActivity;->setContentView(I)V

    .line 33
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Landroid/override/demo/DemoOverrideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, b:Landroid/widget/Button;
    iget-object v1, p0, Landroid/override/demo/DemoOverrideActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    new-instance v1, Landroid/override/OverrideLocationManager;

    invoke-virtual {p0}, Landroid/override/demo/DemoOverrideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/override/OverrideLocationManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/override/demo/DemoOverrideActivity;->locMan:Landroid/override/OverrideLocationManager;

    .line 38
    new-instance v1, Landroid/override/OverrideSensorManager;

    invoke-virtual {p0}, Landroid/override/demo/DemoOverrideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/override/OverrideSensorManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/override/demo/DemoOverrideActivity;->senMan:Landroid/override/OverrideSensorManager;

    .line 40
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.override.providers.RandomWalkLocationProvider"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/override/demo/DemoOverrideActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    return-void
.end method
