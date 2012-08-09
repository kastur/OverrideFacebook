.class public final enum Lcom/facebook/katana/activity/media/CameraActivity$Orientation;
.super Ljava/lang/Enum;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/activity/media/CameraActivity$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

.field public static final enum LANDSCAPE:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

.field public static final enum PORTRAIT:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;


# instance fields
.field public final rotatedDegrees:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    new-instance v0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    const-string v1, "LANDSCAPE"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->LANDSCAPE:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    .line 126
    new-instance v0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->PORTRAIT:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->LANDSCAPE:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->PORTRAIT:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->$VALUES:[Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->rotatedDegrees:I

    .line 133
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/activity/media/CameraActivity$Orientation;
    .locals 1
    .parameter

    .prologue
    .line 124
    const-class v0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/activity/media/CameraActivity$Orientation;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->$VALUES:[Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    invoke-virtual {v0}, [Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    return-object v0
.end method
