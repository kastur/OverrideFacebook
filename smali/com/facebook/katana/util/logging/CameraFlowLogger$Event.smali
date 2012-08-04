.class final enum Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;
.super Ljava/lang/Enum;
.source "CameraFlowLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum ACCEPTED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum CAPTURED_PHOTO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum CAPTURED_VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum FAILED_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum INITIATED_COMPOSER:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum INITIATED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum LOADED_CAMERA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum PICKED_MEDIA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum PLAYED_VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum POSTED_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum REJECTED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum STARTED_CAPTURED_VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum STARTED_FLOW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum START_LOADED_CAMERA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

.field public static final enum SUCCESSFUL_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "STARTED_FLOW"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->STARTED_FLOW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 63
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "START_LOADED_CAMERA"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->START_LOADED_CAMERA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 64
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "LOADED_CAMERA"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->LOADED_CAMERA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 65
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "PICKED_MEDIA"

    invoke-direct {v0, v1, v6}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->PICKED_MEDIA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 66
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "CAPTURED_PHOTO"

    invoke-direct {v0, v1, v7}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->CAPTURED_PHOTO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 67
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "STARTED_CAPTURED_VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->STARTED_CAPTURED_VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 68
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "CAPTURED_VIDEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->CAPTURED_VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 69
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "PLAYED_VIDEO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->PLAYED_VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 70
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "INITIATED_REVIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->INITIATED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 71
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "ACCEPTED_REVIEW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->ACCEPTED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 72
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "REJECTED_REVIEW"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->REJECTED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 73
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "INITIATED_COMPOSER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->INITIATED_COMPOSER:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 74
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "POSTED_UPLOAD"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->POSTED_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 75
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "FAILED_UPLOAD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->FAILED_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 76
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const-string v1, "SUCCESSFUL_UPLOAD"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->SUCCESSFUL_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    .line 61
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->STARTED_FLOW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->START_LOADED_CAMERA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->LOADED_CAMERA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->PICKED_MEDIA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->CAPTURED_PHOTO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->STARTED_CAPTURED_VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->CAPTURED_VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->PLAYED_VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->INITIATED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->ACCEPTED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->REJECTED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->INITIATED_COMPOSER:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->POSTED_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->FAILED_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->SUCCESSFUL_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->$VALUES:[Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;
    .locals 1
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->$VALUES:[Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-virtual {v0}, [Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    return-object v0
.end method
