.class final enum Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;
.super Ljava/lang/Enum;
.source "PhotoGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

.field public static final enum CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

.field public static final enum DEFAULT:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

.field public static final enum EDIT_CAPTION:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

.field public static final enum TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->DEFAULT:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    .line 96
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    const-string v1, "CONTROLS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    .line 97
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    const-string v1, "TAGGING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    .line 98
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    const-string v1, "EDIT_CAPTION"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->EDIT_CAPTION:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->DEFAULT:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->EDIT_CAPTION:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->$VALUES:[Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;
    .locals 1
    .parameter

    .prologue
    .line 94
    const-class v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->$VALUES:[Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-virtual {v0}, [Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    return-object v0
.end method
