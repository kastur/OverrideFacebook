.class public final enum Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;
.super Ljava/lang/Enum;
.source "ImageFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

.field public static final enum ORIGINAL_FILTER:Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

    const-string v1, "ORIGINAL_FILTER"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;->ORIGINAL_FILTER:Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

    sget-object v1, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;->ORIGINAL_FILTER:Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;->$VALUES:[Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;->$VALUES:[Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

    invoke-virtual {v0}, [Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

    return-object v0
.end method
