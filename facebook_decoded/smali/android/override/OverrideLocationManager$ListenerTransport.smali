.class Landroid/override/OverrideLocationManager$ListenerTransport;
.super Landroid/override/IOverrideLocationListener$Stub;
.source "OverrideLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/override/OverrideLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TYPE_LOCATION_CHANGED:I = 0x1

.field private static final TYPE_PROVIDER_DISABLED:I = 0x4

.field private static final TYPE_PROVIDER_ENABLED:I = 0x3

.field private static final TYPE_STATUS_CHANGED:I = 0x2


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/override/OverrideLocationManager;


# direct methods
.method constructor <init>(Landroid/override/OverrideLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 227
    iput-object p1, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->this$0:Landroid/override/OverrideLocationManager;

    invoke-direct {p0}, Landroid/override/IOverrideLocationListener$Stub;-><init>()V

    .line 228
    iput-object p2, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 230
    if-nez p3, :cond_0

    .line 231
    new-instance v0, Landroid/override/OverrideLocationManager$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/override/OverrideLocationManager$ListenerTransport$1;-><init>(Landroid/override/OverrideLocationManager$ListenerTransport;Landroid/override/OverrideLocationManager;)V

    iput-object v0, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 245
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v0, Landroid/override/OverrideLocationManager$ListenerTransport$2;

    invoke-direct {v0, p0, p3, p1}, Landroid/override/OverrideLocationManager$ListenerTransport$2;-><init>(Landroid/override/OverrideLocationManager$ListenerTransport;Landroid/os/Looper;Landroid/override/OverrideLocationManager;)V

    iput-object v0, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 282
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 284
    :pswitch_0
    new-instance v2, Landroid/location/Location;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/location/Location;

    invoke-direct {v2, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 285
    .local v2, location:Landroid/location/Location;
    iget-object v5, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v5, v2}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 288
    .end local v2           #location:Landroid/location/Location;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 289
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "provider"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, provider:Ljava/lang/String;
    const-string v5, "status"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 291
    .local v4, status:I
    const-string v5, "extras"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 292
    .local v1, extras:Landroid/os/Bundle;
    iget-object v5, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v5, v3, v4, v1}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 295
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #provider:Ljava/lang/String;
    .end local v4           #status:I
    :pswitch_2
    iget-object v6, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v6, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$400(Landroid/override/OverrideLocationManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Landroid/override/OverrideLocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 250
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 275
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 276
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 277
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    iget-object v1, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 268
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 269
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 270
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 255
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 256
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "provider"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    if-eqz p3, :cond_0

    .line 261
    const-string v2, "extras"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 263
    :cond_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 264
    iget-object v2, p0, Landroid/override/OverrideLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    return-void
.end method
