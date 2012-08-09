.class Landroid/override/OverrideLocationManager$ListenerTransport$2;
.super Landroid/os/Handler;
.source "OverrideLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/override/OverrideLocationManager$ListenerTransport;-><init>(Landroid/override/OverrideLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/override/OverrideLocationManager$ListenerTransport;

.field final synthetic val$this$0:Landroid/override/OverrideLocationManager;


# direct methods
.method constructor <init>(Landroid/override/OverrideLocationManager$ListenerTransport;Landroid/os/Looper;Landroid/override/OverrideLocationManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Landroid/override/OverrideLocationManager$ListenerTransport$2;->this$1:Landroid/override/OverrideLocationManager$ListenerTransport;

    iput-object p3, p0, Landroid/override/OverrideLocationManager$ListenerTransport$2;->val$this$0:Landroid/override/OverrideLocationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 241
    iget-object v0, p0, Landroid/override/OverrideLocationManager$ListenerTransport$2;->this$1:Landroid/override/OverrideLocationManager$ListenerTransport;

    #calls: Landroid/override/OverrideLocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/override/OverrideLocationManager$ListenerTransport;->access$400(Landroid/override/OverrideLocationManager$ListenerTransport;Landroid/os/Message;)V

    .line 242
    return-void
.end method
