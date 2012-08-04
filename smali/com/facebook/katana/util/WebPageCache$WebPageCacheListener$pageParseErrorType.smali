.class public final enum Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;
.super Ljava/lang/Enum;
.source "WebPageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

.field public static final enum EMPTY_HTML:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

.field public static final enum NOT_FACEWEB_PAGE:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    const-string v1, "NOT_FACEWEB_PAGE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;->NOT_FACEWEB_PAGE:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    new-instance v0, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    const-string v1, "EMPTY_HTML"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;->EMPTY_HTML:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    sget-object v1, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;->NOT_FACEWEB_PAGE:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;->EMPTY_HTML:Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;->$VALUES:[Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;
    .locals 1
    .parameter

    .prologue
    .line 56
    const-class v0, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;->$VALUES:[Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    invoke-virtual {v0}, [Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/util/WebPageCache$WebPageCacheListener$pageParseErrorType;

    return-object v0
.end method
