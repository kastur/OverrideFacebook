.class final enum Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;
.super Ljava/lang/Enum;
.source "CameraFlowLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

.field public static final enum PHOTO:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

.field public static final enum UNKNOWN:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

.field public static final enum VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->UNKNOWN:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    .line 81
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->PHOTO:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    .line 82
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->UNKNOWN:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->PHOTO:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->$VALUES:[Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;
    .locals 1
    .parameter

    .prologue
    .line 79
    const-class v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->$VALUES:[Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    invoke-virtual {v0}, [Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    return-object v0
.end method
