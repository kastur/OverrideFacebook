.class public Lcom/facebook/orca/images/ImageCacheKey;
.super Ljava/lang/Object;
.source "ImageCacheKey.java"


# instance fields
.field final a:Ljava/lang/String;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/images/ImageCacheKey;->b:Landroid/net/Uri;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/orca/images/ImageCacheKey;->b:Landroid/net/Uri;

    .line 17
    iput-object p2, p0, Lcom/facebook/orca/images/ImageCacheKey;->a:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    if-ne p0, p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 35
    :cond_3
    check-cast p1, Lcom/facebook/orca/images/ImageCacheKey;

    .line 37
    iget-object v2, p0, Lcom/facebook/orca/images/ImageCacheKey;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/facebook/orca/images/ImageCacheKey;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/orca/images/ImageCacheKey;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/facebook/orca/images/ImageCacheKey;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 38
    :cond_6
    iget-object v2, p0, Lcom/facebook/orca/images/ImageCacheKey;->b:Landroid/net/Uri;

    iget-object v3, p1, Lcom/facebook/orca/images/ImageCacheKey;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 46
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 47
    return v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
