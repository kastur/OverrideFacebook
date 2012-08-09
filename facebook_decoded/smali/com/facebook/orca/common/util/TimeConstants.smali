.class public Lcom/facebook/orca/common/util/TimeConstants;
.super Ljava/lang/Object;
.source "TimeConstants.java"


# static fields
.field public static a:J

.field public static b:J

.field public static c:J

.field public static d:J

.field public static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3c

    .line 10
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    .line 11
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    .line 12
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    .line 13
    const-wide/16 v0, 0x18

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    .line 14
    const-wide/16 v0, 0x7

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
