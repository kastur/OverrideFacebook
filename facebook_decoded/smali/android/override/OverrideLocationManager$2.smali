.class Landroid/override/OverrideLocationManager$2;
.super Ljava/lang/Object;
.source "OverrideLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/override/OverrideLocationManager;->_removeUpdates(Landroid/location/LocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/override/OverrideLocationManager;

.field final synthetic val$final_listener:Landroid/location/LocationListener;


# direct methods
.method constructor <init>(Landroid/override/OverrideLocationManager;Landroid/location/LocationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Landroid/override/OverrideLocationManager$2;->this$0:Landroid/override/OverrideLocationManager;

    iput-object p2, p0, Landroid/override/OverrideLocationManager$2;->val$final_listener:Landroid/location/LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Landroid/override/OverrideLocationManager$2;->this$0:Landroid/override/OverrideLocationManager;

    iget-object v1, p0, Landroid/override/OverrideLocationManager$2;->val$final_listener:Landroid/location/LocationListener;

    #calls: Landroid/override/OverrideLocationManager;->_handleRemoveUpdates(Landroid/location/LocationListener;)V
    invoke-static {v0, v1}, Landroid/override/OverrideLocationManager;->access$100(Landroid/override/OverrideLocationManager;Landroid/location/LocationListener;)V

    .line 155
    return-void
.end method
