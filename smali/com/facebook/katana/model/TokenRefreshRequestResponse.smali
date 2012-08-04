.class public Lcom/facebook/katana/model/TokenRefreshRequestResponse;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "TokenRefreshRequestResponse.java"


# static fields
.field public static INVALID_DATE:J


# instance fields
.field public final accessToken:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "access_token"
    .end annotation
.end field

.field public final expiresAt:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "expires_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/facebook/katana/model/TokenRefreshRequestResponse;->INVALID_DATE:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/model/TokenRefreshRequestResponse;->accessToken:Ljava/lang/String;

    .line 26
    sget-wide v0, Lcom/facebook/katana/model/TokenRefreshRequestResponse;->INVALID_DATE:J

    iput-wide v0, p0, Lcom/facebook/katana/model/TokenRefreshRequestResponse;->expiresAt:J

    .line 27
    return-void
.end method
