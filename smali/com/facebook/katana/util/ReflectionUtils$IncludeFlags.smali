.class public final enum Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;
.super Ljava/lang/Enum;
.source "ReflectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

.field public static final enum INCLUDE_CONSTRUCTORS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

.field public static final enum INCLUDE_FIELDS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

.field public static final enum INCLUDE_METHODS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

.field public static final enum INCLUDE_SUPERCLASSES:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    const-string v1, "INCLUDE_SUPERCLASSES"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_SUPERCLASSES:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    .line 14
    new-instance v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    const-string v1, "INCLUDE_CONSTRUCTORS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_CONSTRUCTORS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    .line 15
    new-instance v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    const-string v1, "INCLUDE_METHODS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_METHODS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    .line 16
    new-instance v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    const-string v1, "INCLUDE_FIELDS"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_FIELDS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    sget-object v1, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_SUPERCLASSES:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_CONSTRUCTORS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_METHODS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_FIELDS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->$VALUES:[Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->$VALUES:[Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    invoke-virtual {v0}, [Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    return-object v0
.end method
