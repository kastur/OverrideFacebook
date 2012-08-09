.class final Lcom/facebook/orca/users/LastActive$1;
.super Ljava/lang/Object;
.source "LastActive.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/users/LastActive;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/facebook/orca/users/LastActive;
    .locals 1
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/orca/users/LastActive;

    invoke-direct {v0, p0}, Lcom/facebook/orca/users/LastActive;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/facebook/orca/users/LastActive;
    .locals 1
    .parameter

    .prologue
    .line 41
    new-array v0, p0, [Lcom/facebook/orca/users/LastActive;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/facebook/orca/users/LastActive$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/facebook/orca/users/LastActive$1;->a(I)[Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    return-object v0
.end method
