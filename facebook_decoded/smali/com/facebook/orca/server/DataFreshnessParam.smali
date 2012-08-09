.class public final enum Lcom/facebook/orca/server/DataFreshnessParam;
.super Ljava/lang/Enum;
.source "DataFreshnessParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/server/DataFreshnessParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/server/DataFreshnessParam;

.field public static final enum CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

.field public static final enum DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

.field public static final enum PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

.field public static final enum STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/facebook/orca/server/DataFreshnessParam;

    const-string v1, "PREFER_CACHE_IF_UP_TO_DATE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/DataFreshnessParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 14
    new-instance v0, Lcom/facebook/orca/server/DataFreshnessParam;

    const-string v1, "CHECK_SERVER_FOR_NEW_DATA"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/server/DataFreshnessParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 17
    new-instance v0, Lcom/facebook/orca/server/DataFreshnessParam;

    const-string v1, "DO_NOT_CHECK_SERVER"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/server/DataFreshnessParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 20
    new-instance v0, Lcom/facebook/orca/server/DataFreshnessParam;

    const-string v1, "STALE_DATA_OKAY"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/server/DataFreshnessParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/orca/server/DataFreshnessParam;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->$VALUES:[Lcom/facebook/orca/server/DataFreshnessParam;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DataFreshnessParam;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->$VALUES:[Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0}, [Lcom/facebook/orca/server/DataFreshnessParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/server/DataFreshnessParam;

    return-object v0
.end method
