.class public Lcom/facebook/katana/model/FacebookEvent;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/katana/model/FacebookEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mEndTime:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "end_time"
    .end annotation
.end field

.field protected mEventId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "eid"
    .end annotation
.end field

.field protected mName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "name"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field protected mPicSquare:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "pic_square"
    .end annotation
.end field

.field protected mStartTime:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "start_time"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/katana/model/FacebookEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/model/FacebookEvent;->TAG:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/facebook/katana/model/FacebookEvent$1;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookEvent$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mEventId:J

    .line 70
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookEvent;->mName:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookEvent;->mPicSquare:Ljava/lang/String;

    .line 72
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mEventId:J

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mName:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mPicSquare:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mStartTime:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mEndTime:J

    .line 157
    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/model/FacebookEvent;
    .locals 2
    .parameter

    .prologue
    .line 54
    const-class v0, Lcom/facebook/katana/model/FacebookEvent;

    invoke-static {v0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v0

    .line 55
    invoke-static {p0, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/facebook/katana/model/FacebookEvent;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/facebook/katana/model/FacebookEvent;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mEventId:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mPicSquare:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mStartTime:J

    invoke-static {v0, v1}, Lcom/facebook/katana/util/TimeUtils;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 172
    instance-of v1, p1, Lcom/facebook/katana/model/FacebookEvent;

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/facebook/katana/model/FacebookEvent;

    iget-wide v1, p1, Lcom/facebook/katana/model/FacebookEvent;->mEventId:J

    iget-wide v3, p0, Lcom/facebook/katana/model/FacebookEvent;->mEventId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mEventId:J

    long-to-int v0, v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mEventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mPicSquare:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookEvent;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    return-void
.end method
