.class public Lcom/facebook/katana/model/FriendList;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FriendList.java"


# static fields
.field public static INVALID_FBID:J


# instance fields
.field public final flid:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "flid"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field

.field public final owner:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "owner"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/facebook/katana/model/FriendList;->INVALID_FBID:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 28
    sget-wide v0, Lcom/facebook/katana/model/FriendList;->INVALID_FBID:J

    iput-wide v0, p0, Lcom/facebook/katana/model/FriendList;->flid:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/model/FriendList;->name:Ljava/lang/String;

    .line 30
    sget-wide v0, Lcom/facebook/katana/model/FriendList;->INVALID_FBID:J

    iput-wide v0, p0, Lcom/facebook/katana/model/FriendList;->owner:J

    .line 31
    return-void
.end method


# virtual methods
.method public final b()Lcom/facebook/katana/model/PrivacySetting;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 45
    new-instance v0, Lcom/facebook/katana/model/PrivacySetting;

    const-string v2, "CUSTOM"

    iget-object v3, p0, Lcom/facebook/katana/model/FriendList;->name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/katana/model/FriendList;->flid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v8, "SOME_FRIENDS"

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/PrivacySetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
