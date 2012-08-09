.class final Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraHolder.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CameraHolder;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;-><init>(Lcom/facebook/katana/activity/media/CameraHolder;)V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;->a:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->k(Lcom/facebook/katana/activity/media/CameraHolder;)Lcom/facebook/katana/activity/media/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/media/FocusManager;->a(Z)V

    .line 568
    return-void
.end method
