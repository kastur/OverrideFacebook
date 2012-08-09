.class Lcom/facebook/katana/binding/AppSession$BookmarksgetCallback;
.super Lcom/facebook/katana/service/method/BookmarksGet$Callback;
.source "AppSession.java"


# instance fields
.field private a:Landroid/content/Context;

.field private synthetic b:Lcom/facebook/katana/binding/AppSession;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4943
    iput-object p1, p0, Lcom/facebook/katana/binding/AppSession$BookmarksgetCallback;->b:Lcom/facebook/katana/binding/AppSession;

    invoke-direct {p0}, Lcom/facebook/katana/service/method/BookmarksGet$Callback;-><init>()V

    .line 4944
    iput-object p2, p0, Lcom/facebook/katana/binding/AppSession$BookmarksgetCallback;->a:Landroid/content/Context;

    .line 4945
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 4954
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$BookmarksgetCallback;->b:Lcom/facebook/katana/binding/AppSession;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_BOOKMARKS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession$PreloadStep;)V

    .line 4955
    const-string v0, "AppSession"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bookmarks get failed, error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4956
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/BookmarksGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4949
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$BookmarksgetCallback;->b:Lcom/facebook/katana/binding/AppSession;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_BOOKMARKS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession$PreloadStep;)V

    .line 4950
    new-instance v0, Lcom/facebook/katana/binding/AppSession$PreloadNavIcons;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession$BookmarksgetCallback;->b:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession$BookmarksgetCallback;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/AppSession$PreloadNavIcons;-><init>(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/facebook/katana/binding/AppSession$PreloadNavIcons;->a(Ljava/util/List;)V

    .line 4951
    return-void
.end method
