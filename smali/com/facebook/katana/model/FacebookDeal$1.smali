.class final Lcom/facebook/katana/model/FacebookDeal$1;
.super Ljava/lang/Object;
.source "FacebookDeal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/katana/model/FacebookDeal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/facebook/katana/model/FacebookDeal;
    .locals 1
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/facebook/katana/model/FacebookDeal;

    invoke-direct {v0, p0}, Lcom/facebook/katana/model/FacebookDeal;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/facebook/katana/model/FacebookDeal;
    .locals 1
    .parameter

    .prologue
    .line 74
    new-array v0, p0, [Lcom/facebook/katana/model/FacebookDeal;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookDeal$1;->a(Landroid/os/Parcel;)Lcom/facebook/katana/model/FacebookDeal;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookDeal$1;->a(I)[Lcom/facebook/katana/model/FacebookDeal;

    move-result-object v0

    return-object v0
.end method
