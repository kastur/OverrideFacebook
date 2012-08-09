.class public final enum Lcom/facebook/orca/server/DataFreshnessResult;
.super Ljava/lang/Enum;
.source "DataFreshnessResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/server/DataFreshnessResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/server/DataFreshnessResult;

.field public static final enum FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

.field public static final enum FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

.field public static final enum FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

.field public static final enum NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/facebook/orca/server/DataFreshnessResult;

    const-string v1, "FROM_SERVER"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/DataFreshnessResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 14
    new-instance v0, Lcom/facebook/orca/server/DataFreshnessResult;

    const-string v1, "FROM_CACHE_UP_TO_DATE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/server/DataFreshnessResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 17
    new-instance v0, Lcom/facebook/orca/server/DataFreshnessResult;

    const-string v1, "FROM_CACHE_STALE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/server/DataFreshnessResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 20
    new-instance v0, Lcom/facebook/orca/server/DataFreshnessResult;

    const-string v1, "NO_DATA"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/server/DataFreshnessResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/orca/server/DataFreshnessResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->$VALUES:[Lcom/facebook/orca/server/DataFreshnessResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/server/DataFreshnessResult;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DataFreshnessResult;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/server/DataFreshnessResult;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->$VALUES:[Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v0}, [Lcom/facebook/orca/server/DataFreshnessResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/server/DataFreshnessResult;

    return-object v0
.end method
