.class final Lcom/facebook/orca/camera/ImageManager$ImageListParam$1;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/facebook/orca/camera/ImageManager$ImageListParam;
    .locals 2
    .parameter

    .prologue
    .line 106
    new-instance v0, Lcom/facebook/orca/camera/ImageManager$ImageListParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/camera/ImageManager$ImageListParam;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lcom/facebook/orca/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter

    .prologue
    .line 110
    new-array v0, p0, [Lcom/facebook/orca/camera/ImageManager$ImageListParam;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-static {p1}, Lcom/facebook/orca/camera/ImageManager$ImageListParam$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/camera/ImageManager$ImageListParam;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-static {p1}, Lcom/facebook/orca/camera/ImageManager$ImageListParam$1;->a(I)[Lcom/facebook/orca/camera/ImageManager$ImageListParam;

    move-result-object v0

    return-object v0
.end method
