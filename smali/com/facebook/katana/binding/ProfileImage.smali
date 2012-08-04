.class public Lcom/facebook/katana/binding/ProfileImage;
.super Ljava/lang/Object;
.source "ProfileImage.java"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/facebook/katana/binding/ProfileImage;->a:J

    .line 25
    iput-object p3, p0, Lcom/facebook/katana/binding/ProfileImage;->b:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/binding/ProfileImage;->c:I

    .line 27
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/ProfileImage;->d:Ljava/lang/ref/SoftReference;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/facebook/katana/binding/ProfileImage;->c:I

    return v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/ProfileImage;->d:Ljava/lang/ref/SoftReference;

    .line 48
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/facebook/katana/binding/ProfileImage;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/binding/ProfileImage;->c:I

    .line 38
    return-void
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/katana/binding/ProfileImage;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
