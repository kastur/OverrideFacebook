.class public Lcom/facebook/katana/model/FacebookPlace;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPlace.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCheckinCount:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "checkin_count"
    .end annotation
.end field

.field protected mDeal:Lcom/facebook/katana/model/FacebookDeal;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;
        jsonFieldName = "deal"
        type = Lcom/facebook/katana/model/FacebookDeal;
    .end annotation
.end field

.field public final mDisplaySubtext:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "display_subtext"
    .end annotation
.end field

.field protected mEvent:Lcom/facebook/katana/model/FacebookEvent;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;
        jsonFieldName = "event"
        type = Lcom/facebook/katana/model/FacebookEvent;
    .end annotation
.end field

.field public final mLatitude:D
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "latitude"
    .end annotation
.end field

.field public final mLongitude:D
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "longitude"
    .end annotation
.end field

.field public final mName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field

.field public final mPageId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "page_id"
    .end annotation
.end field

.field protected mPageInfo:Lcom/facebook/katana/model/FacebookPage;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;
        jsonFieldName = "page_info"
        type = Lcom/facebook/katana/model/FacebookPage;
    .end annotation
.end field

.field public final mPicUrl:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "pic_square"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/facebook/katana/model/FacebookPlace$1;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookPlace$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookPlace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    .line 50
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mDisplaySubtext:Ljava/lang/String;

    .line 52
    iput-wide v3, p0, Lcom/facebook/katana/model/FacebookPlace;->mLatitude:D

    .line 53
    iput-wide v3, p0, Lcom/facebook/katana/model/FacebookPlace;->mLongitude:D

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mCheckinCount:I

    .line 55
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mPicUrl:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageInfo:Lcom/facebook/katana/model/FacebookPage;

    .line 58
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mDeal:Lcom/facebook/katana/model/FacebookDeal;

    .line 59
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mEvent:Lcom/facebook/katana/model/FacebookEvent;

    .line 60
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 65
    iput-wide p1, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    .line 66
    iput-object p3, p0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPlace;->mDisplaySubtext:Ljava/lang/String;

    .line 68
    iput-wide v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mLatitude:D

    .line 69
    iput-wide v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mLongitude:D

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mCheckinCount:I

    .line 71
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPlace;->mPicUrl:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageInfo:Lcom/facebook/katana/model/FacebookPage;

    .line 74
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPlace;->mDeal:Lcom/facebook/katana/model/FacebookDeal;

    .line 75
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPlace;->mEvent:Lcom/facebook/katana/model/FacebookEvent;

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mLatitude:D

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mLongitude:D

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mCheckinCount:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mDisplaySubtext:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mPicUrl:Ljava/lang/String;

    .line 152
    const-class v0, Lcom/facebook/katana/model/FacebookPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPage;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageInfo:Lcom/facebook/katana/model/FacebookPage;

    .line 153
    const-class v0, Lcom/facebook/katana/model/FacebookDeal;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookDeal;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mDeal:Lcom/facebook/katana/model/FacebookDeal;

    .line 154
    const-class v0, Lcom/facebook/katana/model/FacebookEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookEvent;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mEvent:Lcom/facebook/katana/model/FacebookEvent;

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/facebook/katana/model/FacebookEvent;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookEvent;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    .line 81
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookEvent;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mDisplaySubtext:Ljava/lang/String;

    .line 84
    iput-wide v3, p0, Lcom/facebook/katana/model/FacebookPlace;->mLatitude:D

    .line 85
    iput-wide v3, p0, Lcom/facebook/katana/model/FacebookPlace;->mLongitude:D

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mCheckinCount:I

    .line 87
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookEvent;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mPicUrl:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageInfo:Lcom/facebook/katana/model/FacebookPage;

    .line 90
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPlace;->mDeal:Lcom/facebook/katana/model/FacebookDeal;

    .line 91
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPlace;->mEvent:Lcom/facebook/katana/model/FacebookEvent;

    .line 92
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/FacebookDeal;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPlace;->mDeal:Lcom/facebook/katana/model/FacebookDeal;

    .line 111
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/FacebookPage;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageInfo:Lcom/facebook/katana/model/FacebookPage;

    .line 102
    return-void
.end method

.method public final b()Lcom/facebook/katana/model/FacebookPage;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageInfo:Lcom/facebook/katana/model/FacebookPage;

    return-object v0
.end method

.method public final c()Lcom/facebook/katana/model/FacebookDeal;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mDeal:Lcom/facebook/katana/model/FacebookDeal;

    return-object v0
.end method

.method public final d()Lcom/facebook/katana/model/FacebookEvent;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mEvent:Lcom/facebook/katana/model/FacebookEvent;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 163
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 164
    iget v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mCheckinCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mDisplaySubtext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mPicUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mPageInfo:Lcom/facebook/katana/model/FacebookPage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mDeal:Lcom/facebook/katana/model/FacebookDeal;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPlace;->mEvent:Lcom/facebook/katana/model/FacebookEvent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    return-void
.end method
