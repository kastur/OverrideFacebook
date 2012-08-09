.class Lcom/facebook/katana/binding/AppSession$PreloadNavIcons;
.super Ljava/lang/Object;
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
    .line 4966
    iput-object p1, p0, Lcom/facebook/katana/binding/AppSession$PreloadNavIcons;->b:Lcom/facebook/katana/binding/AppSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4967
    iput-object p2, p0, Lcom/facebook/katana/binding/AppSession$PreloadNavIcons;->a:Landroid/content/Context;

    .line 4968
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
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
    .line 4971
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession$PreloadNavIcons;->b:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v1

    .line 4972
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/BookmarksGroup;

    .line 4973
    invoke-virtual {v0}, Lcom/facebook/katana/model/BookmarksGroup;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/Bookmark;

    .line 4975
    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession$PreloadNavIcons;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/facebook/katana/model/Bookmark;->pic:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 4978
    :cond_1
    return-void
.end method
