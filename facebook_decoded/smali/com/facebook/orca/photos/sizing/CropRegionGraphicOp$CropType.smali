.class public final enum Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;
.super Ljava/lang/Enum;
.source "CropRegionGraphicOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

.field public static final enum BOTTOM_OR_RIGHT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

.field public static final enum CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

.field public static final enum TOP_OR_LEFT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    .line 17
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    const-string v1, "TOP_OR_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->TOP_OR_LEFT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    .line 18
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    const-string v1, "BOTTOM_OR_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->BOTTOM_OR_RIGHT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    sget-object v1, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->TOP_OR_LEFT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->BOTTOM_OR_RIGHT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->$VALUES:[Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->$VALUES:[Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    invoke-virtual {v0}, [Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    return-object v0
.end method
