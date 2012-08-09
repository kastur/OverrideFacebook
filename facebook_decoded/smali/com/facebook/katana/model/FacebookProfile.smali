.class public Lcom/facebook/katana/model/FacebookProfile;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_ID:J = -0x1L

.field public static final TYPE_EVENT:I = 0x4

.field public static final TYPE_GROUP:I = 0x3

.field public static final TYPE_PAGE:I = 0x1

.field public static final TYPE_PLACE_PAGE:I = 0x2

.field public static final TYPE_USER:I


# instance fields
.field public final mCanPost:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "can_post"
    .end annotation
.end field

.field public final mCanPostKnown:Z

.field public final mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field

.field public final mId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "id"
    .end annotation
.end field

.field public final mImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "pic_square"
    .end annotation
.end field

.field public final mType:I

.field private mTypeString:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile$1;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookProfile$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    .line 70
    iput-object v3, p0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    .line 72
    iput v2, p0, Lcom/facebook/katana/model/FacebookProfile;->mType:I

    .line 73
    iput-boolean v2, p0, Lcom/facebook/katana/model/FacebookProfile;->mCanPost:Z

    .line 74
    iput-boolean v2, p0, Lcom/facebook/katana/model/FacebookProfile;->mCanPostKnown:Z

    .line 75
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;IZ)V

    .line 94
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 83
    iput-wide p1, p0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    .line 84
    iput-object p3, p0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    .line 86
    iput p5, p0, Lcom/facebook/katana/model/FacebookProfile;->mType:I

    .line 87
    iput-boolean p6, p0, Lcom/facebook/katana/model/FacebookProfile;->mCanPost:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mCanPostKnown:Z

    .line 89
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mType:I

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 138
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/facebook/katana/model/FacebookProfile;->mCanPost:Z

    .line 139
    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mCanPostKnown:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/facebook/katana/model/FacebookUser;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 102
    iget-wide v0, p1, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    .line 103
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mType:I

    .line 106
    iget-boolean v0, p1, Lcom/facebook/katana/model/FacebookUser;->mCanPost:Z

    iput-boolean v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mCanPost:Z

    .line 107
    iget-boolean v0, p1, Lcom/facebook/katana/model/FacebookUser;->mCanPostKnown:Z

    iput-boolean v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mCanPostKnown:Z

    .line 108
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mTypeString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mTypeString:Ljava/lang/String;

    const-string v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "mType"

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/model/FacebookProfile;->a(Ljava/lang/String;J)V

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mTypeString:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 176
    instance-of v0, p1, Lcom/facebook/katana/model/FacebookProfile;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    check-cast p1, Lcom/facebook/katana/model/FacebookProfile;

    iget-wide v2, p1, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    const-string v1, "FacebookProfile("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/facebook/katana/model/FacebookProfile;->mCanPost:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/facebook/katana/model/FacebookProfile;->mCanPostKnown:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 150
    return-void
.end method
