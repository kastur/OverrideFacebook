.class final Lcom/facebook/katana/model/FacebookEvent$1;
.super Ljava/lang/Object;
.source "FacebookEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/katana/model/FacebookEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/facebook/katana/model/FacebookEvent;
    .locals 1
    .parameter

    .prologue
    .line 136
    new-instance v0, Lcom/facebook/katana/model/FacebookEvent;

    invoke-direct {v0, p0}, Lcom/facebook/katana/model/FacebookEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/facebook/katana/model/FacebookEvent;
    .locals 1
    .parameter

    .prologue
    .line 140
    new-array v0, p0, [Lcom/facebook/katana/model/FacebookEvent;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookEvent$1;->a(Landroid/os/Parcel;)Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookEvent$1;->a(I)[Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v0

    return-object v0
.end method
