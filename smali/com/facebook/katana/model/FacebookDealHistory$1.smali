.class final Lcom/facebook/katana/model/FacebookDealHistory$1;
.super Ljava/lang/Object;
.source "FacebookDealHistory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/katana/model/FacebookDealHistory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/facebook/katana/model/FacebookDealHistory;
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/katana/model/FacebookDealHistory;

    invoke-direct {v0, p0}, Lcom/facebook/katana/model/FacebookDealHistory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/facebook/katana/model/FacebookDealHistory;
    .locals 1
    .parameter

    .prologue
    .line 46
    new-array v0, p0, [Lcom/facebook/katana/model/FacebookDealHistory;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookDealHistory$1;->a(Landroid/os/Parcel;)Lcom/facebook/katana/model/FacebookDealHistory;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookDealHistory$1;->a(I)[Lcom/facebook/katana/model/FacebookDealHistory;

    move-result-object v0

    return-object v0
.end method
