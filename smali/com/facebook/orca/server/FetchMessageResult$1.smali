.class final Lcom/facebook/orca/server/FetchMessageResult$1;
.super Ljava/lang/Object;
.source "FetchMessageResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/server/FetchMessageResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/facebook/orca/server/FetchMessageResult;
    .locals 2
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/orca/server/FetchMessageResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/server/FetchMessageResult;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lcom/facebook/orca/server/FetchMessageResult;
    .locals 1
    .parameter

    .prologue
    .line 40
    new-array v0, p0, [Lcom/facebook/orca/server/FetchMessageResult;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-static {p1}, Lcom/facebook/orca/server/FetchMessageResult$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/server/FetchMessageResult;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-static {p1}, Lcom/facebook/orca/server/FetchMessageResult$1;->a(I)[Lcom/facebook/orca/server/FetchMessageResult;

    move-result-object v0

    return-object v0
.end method
