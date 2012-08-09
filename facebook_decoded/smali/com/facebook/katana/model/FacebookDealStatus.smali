.class public Lcom/facebook/katana/model/FacebookDealStatus;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookDealStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/katana/model/FacebookDealStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_ID:J = -0x1L


# instance fields
.field public final mDealId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "promotion_id"
    .end annotation
.end field

.field public final mStatusCode:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "status_code"
    .end annotation
.end field

.field public final mStatusData:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "status_data"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/facebook/katana/model/FacebookDealStatus$1;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookDealStatus$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookDealStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookDealStatus;->mDealId:J

    .line 29
    iput v2, p0, Lcom/facebook/katana/model/FacebookDealStatus;->mStatusCode:I

    .line 30
    iput v2, p0, Lcom/facebook/katana/model/FacebookDealStatus;->mStatusData:I

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookDealStatus;->mDealId:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/model/FacebookDealStatus;->mStatusCode:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/model/FacebookDealStatus;->mStatusData:I

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookDealStatus;->mDealId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget v0, p0, Lcom/facebook/katana/model/FacebookDealStatus;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/facebook/katana/model/FacebookDealStatus;->mStatusData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
