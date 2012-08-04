.class interface abstract Lcom/facebook/katana/util/logging/MobileEventLogger$LoggingQuery;
.super Ljava/lang/Object;
.source "MobileEventLogger.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 670
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pre_ctx"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "post_ctx"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/util/logging/MobileEventLogger$LoggingQuery;->a:[Ljava/lang/String;

    return-void
.end method
