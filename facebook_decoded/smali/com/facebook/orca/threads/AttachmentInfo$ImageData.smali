.class public Lcom/facebook/orca/threads/AttachmentInfo$ImageData;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo$ImageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/facebook/orca/threads/AttachmentInfo$ImageData$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/AttachmentInfo$ImageData$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->a:I

    .line 22
    iput p2, p0, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->b:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->a:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->b:I

    .line 28
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void
.end method
