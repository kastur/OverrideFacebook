.class final enum Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;
.super Ljava/lang/Enum;
.source "AddShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

.field public static final enum SHORTCUT_CONVERTED:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

.field public static final enum SHORTCUT_LAST_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

.field public static final enum SHORTCUT_TIMES_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    const-string v1, "SHORTCUT_TIMES_SHOWN"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_TIMES_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    .line 234
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    const-string v1, "SHORTCUT_LAST_SHOWN"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_LAST_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    .line 235
    new-instance v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    const-string v1, "SHORTCUT_CONVERTED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_CONVERTED:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    .line 232
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_TIMES_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_LAST_SHOWN:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->SHORTCUT_CONVERTED:Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->$VALUES:[Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

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
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;
    .locals 1
    .parameter

    .prologue
    .line 232
    const-class v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->$VALUES:[Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    invoke-virtual {v0}, [Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/dialog/AddShortcutActivity$ShortcutGating$PrefKeys;

    return-object v0
.end method
