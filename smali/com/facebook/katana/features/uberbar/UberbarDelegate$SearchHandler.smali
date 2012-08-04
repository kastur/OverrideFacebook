.class Lcom/facebook/katana/features/uberbar/UberbarDelegate$SearchHandler;
.super Ljava/lang/Object;
.source "UberbarDelegate.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;


# static fields
.field private static synthetic b:Z


# instance fields
.field final synthetic a:Lcom/facebook/katana/features/uberbar/UberbarDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-class v0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/katana/features/uberbar/UberbarDelegate$SearchHandler;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate$SearchHandler;->a:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/facebook/katana/features/uberbar/UberbarDelegate$SearchHandler;-><init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    sget-boolean v0, Lcom/facebook/katana/features/uberbar/UberbarDelegate$SearchHandler;->b:Z

    if-nez v0, :cond_0

    invoke-interface {p3}, Lcom/facebook/katana/webview/FacewebPalCall;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ubersearchReady"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 175
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/facebook/katana/features/uberbar/UberbarDelegate$SearchHandler$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate$SearchHandler$1;-><init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate$SearchHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method
