.class public final enum Lcom/facebook/katana/binding/AppSession$PreloadStep;
.super Ljava/lang/Enum;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/binding/AppSession$PreloadStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/binding/AppSession$PreloadStep;

.field public static final enum FETCH_AUTH_COOKIE_FOR_FW:Lcom/facebook/katana/binding/AppSession$PreloadStep;

.field public static final enum FETCH_BOOKMARKS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

.field public static final enum FETCH_FACEWEB_URI_MAP:Lcom/facebook/katana/binding/AppSession$PreloadStep;

.field public static final enum FETCH_GATEKEEPERS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

.field public static final enum FETCH_SKELETON:Lcom/facebook/katana/binding/AppSession$PreloadStep;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 367
    new-instance v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;

    const-string v1, "FETCH_GATEKEEPERS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/AppSession$PreloadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_GATEKEEPERS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    new-instance v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;

    const-string v1, "FETCH_SKELETON"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/binding/AppSession$PreloadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_SKELETON:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    new-instance v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;

    const-string v1, "FETCH_BOOKMARKS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/binding/AppSession$PreloadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_BOOKMARKS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    .line 368
    new-instance v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;

    const-string v1, "FETCH_FACEWEB_URI_MAP"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/binding/AppSession$PreloadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_FACEWEB_URI_MAP:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    new-instance v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;

    const-string v1, "FETCH_AUTH_COOKIE_FOR_FW"

    invoke-direct {v0, v1, v6}, Lcom/facebook/katana/binding/AppSession$PreloadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_AUTH_COOKIE_FOR_FW:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    .line 366
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/katana/binding/AppSession$PreloadStep;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_GATEKEEPERS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_SKELETON:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_BOOKMARKS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_FACEWEB_URI_MAP:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_AUTH_COOKIE_FOR_FW:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;->$VALUES:[Lcom/facebook/katana/binding/AppSession$PreloadStep;

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
    .line 366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/binding/AppSession$PreloadStep;
    .locals 1
    .parameter

    .prologue
    .line 366
    const-class v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/binding/AppSession$PreloadStep;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/facebook/katana/binding/AppSession$PreloadStep;->$VALUES:[Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-virtual {v0}, [Lcom/facebook/katana/binding/AppSession$PreloadStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/binding/AppSession$PreloadStep;

    return-object v0
.end method
