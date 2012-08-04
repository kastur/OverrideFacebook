.class final Lcom/facebook/orca/threadview/RowReceiptParticipant$2;
.super Ljava/lang/Object;
.source "RowReceiptParticipant.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/facebook/orca/threadview/RowReceiptParticipant;
    .locals 1
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/facebook/orca/threadview/RowReceiptParticipant;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/RowReceiptParticipant;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/facebook/orca/threadview/RowReceiptParticipant;
    .locals 1
    .parameter

    .prologue
    .line 61
    new-array v0, p0, [Lcom/facebook/orca/threadview/RowReceiptParticipant;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-static {p1}, Lcom/facebook/orca/threadview/RowReceiptParticipant$2;->a(Landroid/os/Parcel;)Lcom/facebook/orca/threadview/RowReceiptParticipant;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-static {p1}, Lcom/facebook/orca/threadview/RowReceiptParticipant$2;->a(I)[Lcom/facebook/orca/threadview/RowReceiptParticipant;

    move-result-object v0

    return-object v0
.end method
