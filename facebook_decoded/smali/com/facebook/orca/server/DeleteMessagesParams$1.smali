.class final Lcom/facebook/orca/server/DeleteMessagesParams$1;
.super Ljava/lang/Object;
.source "DeleteMessagesParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/server/DeleteMessagesParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/facebook/orca/server/DeleteMessagesParams;
    .locals 1
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/facebook/orca/server/DeleteMessagesParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/DeleteMessagesParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/facebook/orca/server/DeleteMessagesParams;
    .locals 1
    .parameter

    .prologue
    .line 42
    new-array v0, p0, [Lcom/facebook/orca/server/DeleteMessagesParams;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-static {p1}, Lcom/facebook/orca/server/DeleteMessagesParams$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/server/DeleteMessagesParams;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-static {p1}, Lcom/facebook/orca/server/DeleteMessagesParams$1;->a(I)[Lcom/facebook/orca/server/DeleteMessagesParams;

    move-result-object v0

    return-object v0
.end method
