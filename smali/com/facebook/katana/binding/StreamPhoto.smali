.class public Lcom/facebook/katana/binding/StreamPhoto;
.super Ljava/lang/Object;
.source "StreamPhoto.java"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private e:I

.field private f:Ljava/lang/ref/SoftReference;
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
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/katana/binding/StreamPhoto;->a:Landroid/net/Uri;

    .line 37
    iput-object p2, p0, Lcom/facebook/katana/binding/StreamPhoto;->b:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/facebook/katana/binding/StreamPhoto;->c:Ljava/lang/String;

    .line 39
    iput-wide p4, p0, Lcom/facebook/katana/binding/StreamPhoto;->d:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->e:I

    .line 41
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->f:Ljava/lang/ref/SoftReference;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->f:Ljava/lang/ref/SoftReference;

    .line 98
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->d:J

    return-wide v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->e:I

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->e:I

    .line 84
    return-void
.end method

.method public final g()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhoto;->f:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
