.class Lcom/facebook/katana/binding/AppSession$6;
.super Ljava/lang/Object;
.source "AppSession.java"

# interfaces
.implements Lcom/facebook/katana/webview/FacewebComponentsStoreCache$Listener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/binding/AppSession;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/AppSession;)V
    .locals 0
    .parameter

    .prologue
    .line 3951
    iput-object p1, p0, Lcom/facebook/katana/binding/AppSession$6;->a:Lcom/facebook/katana/binding/AppSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;)V
    .locals 2
    .parameter

    .prologue
    .line 3954
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$6;->a:Lcom/facebook/katana/binding/AppSession;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_SKELETON:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession$PreloadStep;)V

    .line 3955
    return-void
.end method

.method public final a(Lcom/facebook/katana/webview/FacewebComponentsStoreCache$LoadError;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3961
    const-string v0, "PRELOAD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to fetch skeleton in preloader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3963
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$6;->a:Lcom/facebook/katana/binding/AppSession;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_SKELETON:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession$PreloadStep;)V

    .line 3964
    return-void
.end method
