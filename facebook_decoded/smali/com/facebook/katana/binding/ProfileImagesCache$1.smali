.class Lcom/facebook/katana/binding/ProfileImagesCache$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "ProfileImagesCache.java"


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/util/Map;

.field private synthetic c:Lcom/facebook/katana/binding/ProfileImagesCache;


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$1;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    iput-object p2, p0, Lcom/facebook/katana/binding/ProfileImagesCache$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/binding/ProfileImagesCache$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImagesCache$1;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v1, p0, Lcom/facebook/katana/binding/ProfileImagesCache$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/binding/ProfileImagesCache$1;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 194
    return-void
.end method
