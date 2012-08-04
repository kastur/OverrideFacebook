.class public Lcom/facebook/katana/model/FacebookCheckin;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookCheckin.java"


# static fields
.field public static final INVALID_ID:J = -0x1L

.field public static final LOCATION_POST_TYPE_CHECKIN:Ljava/lang/String; = "checkin"

.field public static final LOCATION_POST_TYPE_PHOTO:Ljava/lang/String; = "photo"

.field public static final LOCATION_POST_TYPE_STATUS:Ljava/lang/String; = "status"

.field public static final checkinsByTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/facebook/katana/model/FacebookCheckin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mActor:Lcom/facebook/katana/model/FacebookUser;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;
        jsonFieldName = "actor"
        type = Lcom/facebook/katana/model/FacebookUser;
    .end annotation
.end field

.field public final mActorId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "actor_uid"
    .end annotation
.end field

.field protected mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;
        jsonFieldName = "checkin_details"
        type = Lcom/facebook/katana/model/FacebookCheckinDetails;
    .end annotation
.end field

.field public final mCheckinId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "checkin_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/facebook/katana/model/FacebookCheckin$1;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookCheckin$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookCheckin;->checkinsByTimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 37
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 38
    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookCheckin;->mActorId:J

    .line 39
    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinId:J

    .line 40
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/facebook/katana/model/FacebookCheckin;->mActorId:J

    .line 45
    iput-wide p3, p0, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinId:J

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/FacebookCheckinDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    .line 56
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/FacebookUser;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookCheckin;->mActor:Lcom/facebook/katana/model/FacebookUser;

    .line 66
    return-void
.end method

.method public final b()Lcom/facebook/katana/model/FacebookCheckinDetails;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    return-object v0
.end method

.method public final c()Lcom/facebook/katana/model/FacebookUser;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookCheckin;->mActor:Lcom/facebook/katana/model/FacebookUser;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookCheckinDetails;->mAuthorId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
