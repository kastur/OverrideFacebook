.class Lcom/facebook/katana/binding/ProfileImagesCache$2;
.super Ljava/lang/Object;
.source "ProfileImagesCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/binding/ProfileImage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/ProfileImagesCache;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/binding/ProfileImage;Lcom/facebook/katana/binding/ProfileImage;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/facebook/katana/binding/ProfileImage;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/katana/binding/ProfileImage;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/binding/ProfileImage;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/katana/binding/ProfileImage;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 240
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 234
    check-cast p1, Lcom/facebook/katana/binding/ProfileImage;

    check-cast p2, Lcom/facebook/katana/binding/ProfileImage;

    invoke-static {p1, p2}, Lcom/facebook/katana/binding/ProfileImagesCache$2;->a(Lcom/facebook/katana/binding/ProfileImage;Lcom/facebook/katana/binding/ProfileImage;)I

    move-result v0

    return v0
.end method
