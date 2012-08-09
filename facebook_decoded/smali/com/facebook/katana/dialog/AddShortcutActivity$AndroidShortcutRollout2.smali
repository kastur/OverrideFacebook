.class public final enum Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;
.super Ljava/lang/Enum;
.source "AddShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum CONTROL:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum MS_MESSENGER:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum MS_MESSENGER_APK:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum MS_MESSENGER_NO_CANCEL:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum NF_BOTH:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum NF_BOTH_NO_CANCEL:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum NF_CAMERA:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum NF_MESSENGER:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum NF_MESSENGER_APK:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum PHOTOS_CAMERA:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

.field public static final enum UPLOAD_CAMERA:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "CONTROL"

    const-string v2, "control, does nothing"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->CONTROL:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 28
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "NF_MESSENGER"

    const-string v2, "show on newsfeed, install messenger"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_MESSENGER:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 29
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "NF_CAMERA"

    const-string v2, "show on newsfeed, install camera"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_CAMERA:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 30
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "NF_BOTH"

    const-string v2, "show on newsfeed, install messenger+camera"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_BOTH:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 31
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "NF_BOTH_NO_CANCEL"

    const-string v2, "show on newsfeed, install messenger+camera, one button"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_BOTH_NO_CANCEL:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 32
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "MS_MESSENGER"

    const/4 v2, 0x5

    const-string v3, "show in inbox, install messenger shortcut"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->MS_MESSENGER:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 33
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "MS_MESSENGER_APK"

    const/4 v2, 0x6

    const-string v3, "show in inbox, install standalone messenger app"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->MS_MESSENGER_APK:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 34
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "NF_MESSENGER_APK"

    const/4 v2, 0x7

    const-string v3, "show in newsfeed, install standalone messenger app"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_MESSENGER_APK:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 35
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "MS_MESSENGER_NO_CANCEL"

    const/16 v2, 0x8

    const-string v3, "show in inbox, install messenger shortcut, one button"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->MS_MESSENGER_NO_CANCEL:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 36
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "UPLOAD_CAMERA"

    const/16 v2, 0x9

    const-string v3, "show after upload, install camera"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->UPLOAD_CAMERA:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 37
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "PHOTOS_CAMERA"

    const/16 v2, 0xa

    const-string v3, "show in photos, install camera"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->PHOTOS_CAMERA:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->CONTROL:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_MESSENGER:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_CAMERA:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_BOTH:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_BOTH_NO_CANCEL:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->MS_MESSENGER:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->MS_MESSENGER_APK:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->NF_MESSENGER_APK:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->MS_MESSENGER_NO_CANCEL:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->UPLOAD_CAMERA:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->PHOTOS_CAMERA:Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->$VALUES:[Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->mDesc:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->$VALUES:[Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    invoke-virtual {v0}, [Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->mDesc:Ljava/lang/String;

    return-object v0
.end method
