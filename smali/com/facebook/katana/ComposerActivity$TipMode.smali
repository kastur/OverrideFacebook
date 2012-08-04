.class final enum Lcom/facebook/katana/ComposerActivity$TipMode;
.super Ljava/lang/Enum;
.source "ComposerActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/ComposerActivity$TipMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/ComposerActivity$TipMode;

.field public static final enum NONE:Lcom/facebook/katana/ComposerActivity$TipMode;

.field public static final enum TAG_EVENT_EDUCATION_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

.field public static final enum TAG_PHOTO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

.field public static final enum TAG_VIDEO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

.field public static final enum TAG_WITH_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    new-instance v0, Lcom/facebook/katana/ComposerActivity$TipMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/ComposerActivity$TipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->NONE:Lcom/facebook/katana/ComposerActivity$TipMode;

    new-instance v0, Lcom/facebook/katana/ComposerActivity$TipMode;

    const-string v1, "TAG_WITH_TIP"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/ComposerActivity$TipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_WITH_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    new-instance v0, Lcom/facebook/katana/ComposerActivity$TipMode;

    const-string v1, "TAG_PHOTO_PLACE_TIP"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/ComposerActivity$TipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_PHOTO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    new-instance v0, Lcom/facebook/katana/ComposerActivity$TipMode;

    const-string v1, "TAG_VIDEO_PLACE_TIP"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/ComposerActivity$TipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_VIDEO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    new-instance v0, Lcom/facebook/katana/ComposerActivity$TipMode;

    const-string v1, "TAG_EVENT_EDUCATION_TIP"

    invoke-direct {v0, v1, v6}, Lcom/facebook/katana/ComposerActivity$TipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_EVENT_EDUCATION_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    .line 276
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/katana/ComposerActivity$TipMode;

    sget-object v1, Lcom/facebook/katana/ComposerActivity$TipMode;->NONE:Lcom/facebook/katana/ComposerActivity$TipMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_WITH_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_PHOTO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_VIDEO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_EVENT_EDUCATION_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->$VALUES:[Lcom/facebook/katana/ComposerActivity$TipMode;

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
    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/ComposerActivity$TipMode;
    .locals 1
    .parameter

    .prologue
    .line 276
    const-class v0, Lcom/facebook/katana/ComposerActivity$TipMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ComposerActivity$TipMode;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/ComposerActivity$TipMode;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->$VALUES:[Lcom/facebook/katana/ComposerActivity$TipMode;

    invoke-virtual {v0}, [Lcom/facebook/katana/ComposerActivity$TipMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/ComposerActivity$TipMode;

    return-object v0
.end method
