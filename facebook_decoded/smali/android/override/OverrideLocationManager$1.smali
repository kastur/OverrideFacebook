.class Landroid/override/OverrideLocationManager$1;
.super Ljava/lang/Object;
.source "OverrideLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/override/OverrideLocationManager;->_requestLocationUpdates(Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/override/OverrideLocationManager;

.field final synthetic val$final_listener:Landroid/location/LocationListener;

.field final synthetic val$final_looper:Landroid/os/Looper;

.field final synthetic val$final_provider:Ljava/lang/String;

.field final synthetic val$final_singleShot:Z


# direct methods
.method constructor <init>(Landroid/override/OverrideLocationManager;Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Landroid/override/OverrideLocationManager$1;->this$0:Landroid/override/OverrideLocationManager;

    iput-object p2, p0, Landroid/override/OverrideLocationManager$1;->val$final_provider:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/override/OverrideLocationManager$1;->val$final_singleShot:Z

    iput-object p4, p0, Landroid/override/OverrideLocationManager$1;->val$final_listener:Landroid/location/LocationListener;

    iput-object p5, p0, Landroid/override/OverrideLocationManager$1;->val$final_looper:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Landroid/override/OverrideLocationManager$1;->this$0:Landroid/override/OverrideLocationManager;

    iget-object v1, p0, Landroid/override/OverrideLocationManager$1;->val$final_provider:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/override/OverrideLocationManager$1;->val$final_singleShot:Z

    iget-object v3, p0, Landroid/override/OverrideLocationManager$1;->val$final_listener:Landroid/location/LocationListener;

    iget-object v4, p0, Landroid/override/OverrideLocationManager$1;->val$final_looper:Landroid/os/Looper;

    #calls: Landroid/override/OverrideLocationManager;->_handleRequestLocationUpdates(Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/override/OverrideLocationManager;->access$000(Landroid/override/OverrideLocationManager;Ljava/lang/String;ZLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 139
    return-void
.end method
