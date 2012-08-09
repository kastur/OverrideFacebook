.class public final enum Lcom/facebook/orca/server/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/server/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/server/ErrorCode;

.field public static final enum API_ERROR:Lcom/facebook/orca/server/ErrorCode;

.field public static final enum CONNECTION_FAILURE:Lcom/facebook/orca/server/ErrorCode;

.field public static final enum HTTP_400_AUTHENTICATION:Lcom/facebook/orca/server/ErrorCode;

.field public static final enum HTTP_400_OTHER:Lcom/facebook/orca/server/ErrorCode;

.field public static final enum HTTP_500_CLASS:Lcom/facebook/orca/server/ErrorCode;

.field public static final enum NO_ERROR:Lcom/facebook/orca/server/ErrorCode;

.field public static final enum ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

.field public static final enum ORCA_SERVICE_UNKNOWN_OPERATION:Lcom/facebook/orca/server/ErrorCode;

.field public static final enum OTHER:Lcom/facebook/orca/server/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/server/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/ErrorCode;->NO_ERROR:Lcom/facebook/orca/server/ErrorCode;

    .line 10
    new-instance v0, Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "API_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/server/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/ErrorCode;->API_ERROR:Lcom/facebook/orca/server/ErrorCode;

    .line 11
    new-instance v0, Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "HTTP_400_AUTHENTICATION"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/server/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/ErrorCode;->HTTP_400_AUTHENTICATION:Lcom/facebook/orca/server/ErrorCode;

    .line 12
    new-instance v0, Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "HTTP_400_OTHER"

    invoke-direct {v0, v1, v6}, Lcom/facebook/orca/server/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/ErrorCode;->HTTP_400_OTHER:Lcom/facebook/orca/server/ErrorCode;

    .line 13
    new-instance v0, Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "HTTP_500_CLASS"

    invoke-direct {v0, v1, v7}, Lcom/facebook/orca/server/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/ErrorCode;->HTTP_500_CLASS:Lcom/facebook/orca/server/ErrorCode;

    .line 14
    new-instance v0, Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "CONNECTION_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/ErrorCode;->CONNECTION_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    .line 15
    new-instance v0, Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "ORCA_SERVICE_UNKNOWN_OPERATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_UNKNOWN_OPERATION:Lcom/facebook/orca/server/ErrorCode;

    .line 16
    new-instance v0, Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "ORCA_SERVICE_IPC_FAILURE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    .line 17
    new-instance v0, Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "OTHER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/server/ErrorCode;->OTHER:Lcom/facebook/orca/server/ErrorCode;

    .line 7
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/orca/server/ErrorCode;

    sget-object v1, Lcom/facebook/orca/server/ErrorCode;->NO_ERROR:Lcom/facebook/orca/server/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/server/ErrorCode;->API_ERROR:Lcom/facebook/orca/server/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/server/ErrorCode;->HTTP_400_AUTHENTICATION:Lcom/facebook/orca/server/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/server/ErrorCode;->HTTP_400_OTHER:Lcom/facebook/orca/server/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/orca/server/ErrorCode;->HTTP_500_CLASS:Lcom/facebook/orca/server/ErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/orca/server/ErrorCode;->CONNECTION_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_UNKNOWN_OPERATION:Lcom/facebook/orca/server/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/orca/server/ErrorCode;->OTHER:Lcom/facebook/orca/server/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/server/ErrorCode;->$VALUES:[Lcom/facebook/orca/server/ErrorCode;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/server/ErrorCode;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/facebook/orca/server/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/server/ErrorCode;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->$VALUES:[Lcom/facebook/orca/server/ErrorCode;

    invoke-virtual {v0}, [Lcom/facebook/orca/server/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/server/ErrorCode;

    return-object v0
.end method
