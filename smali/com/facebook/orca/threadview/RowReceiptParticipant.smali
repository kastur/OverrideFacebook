.class public Lcom/facebook/orca/threadview/RowReceiptParticipant;
.super Ljava/lang/Object;
.source "RowReceiptParticipant.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/orca/threads/ParticipantInfo;

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/orca/threadview/RowReceiptParticipant$1;

    invoke-direct {v0}, Lcom/facebook/orca/threadview/RowReceiptParticipant$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadview/RowReceiptParticipant;->a:Ljava/util/Comparator;

    .line 54
    new-instance v0, Lcom/facebook/orca/threadview/RowReceiptParticipant$2;

    invoke-direct {v0}, Lcom/facebook/orca/threadview/RowReceiptParticipant$2;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadview/RowReceiptParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptParticipant;->b:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threadview/RowReceiptParticipant;->c:J

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/threads/ParticipantInfo;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/threadview/RowReceiptParticipant;->b:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 37
    iput-wide p2, p0, Lcom/facebook/orca/threadview/RowReceiptParticipant;->c:J

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptParticipant;->b:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/facebook/orca/threadview/RowReceiptParticipant;->c:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptParticipant;->b:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 73
    iget-wide v0, p0, Lcom/facebook/orca/threadview/RowReceiptParticipant;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    return-void
.end method
