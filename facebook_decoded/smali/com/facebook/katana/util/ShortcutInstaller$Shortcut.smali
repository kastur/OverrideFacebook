.class public final enum Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;
.super Ljava/lang/Enum;
.source "ShortcutInstaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

.field public static final enum CAMERA_SHORTCUT:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

.field public static final enum MESSENGER_SHORTCUT:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mIconIdKatana:I

.field private mIconIdWakizashi:I

.field private mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const v7, 0x7f020165

    const v4, 0x7f020163

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    const-string v1, "CAMERA_SHORTCUT"

    const-string v3, "Camera"

    const-class v6, Lcom/facebook/katana/activity/media/CameraLauncherActivity;

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->CAMERA_SHORTCUT:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    .line 49
    new-instance v3, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    const-string v4, "MESSENGER_SHORTCUT"

    const-string v6, "Messenger"

    const-class v9, Lcom/facebook/katana/orca/ThreadListLauncherActivity;

    move v5, v10

    move v8, v7

    invoke-direct/range {v3 .. v9}, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/Class;)V

    sput-object v3, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->MESSENGER_SHORTCUT:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    sget-object v1, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->CAMERA_SHORTCUT:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->MESSENGER_SHORTCUT:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    aput-object v1, v0, v10

    sput-object v0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->$VALUES:[Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->mLabel:Ljava/lang/String;

    .line 63
    iput p4, p0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->mIconIdKatana:I

    .line 64
    iput p5, p0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->mIconIdWakizashi:I

    .line 65
    iput-object p6, p0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->mClazz:Ljava/lang/Class;

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->$VALUES:[Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    invoke-virtual {v0}, [Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    return-object v0
.end method


# virtual methods
.method public final getBetaShortcutIcon()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->mIconIdWakizashi:I

    return v0
.end method

.method public final getShortcutClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->mClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public final getShortcutIcon()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->mIconIdKatana:I

    return v0
.end method

.method public final getShortcutIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->getShortcutClass()Ljava/lang/Class;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final getShortcutLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->mLabel:Ljava/lang/String;

    return-object v0
.end method
