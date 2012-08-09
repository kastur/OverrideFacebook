.class synthetic Lcom/facebook/katana/features/imagefilters/ImageFilterManager$1;
.super Ljava/lang/Object;
.source "ImageFilterManager.java"


# static fields
.field private static synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;->values()[Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$1;->a:[I

    sget-object v1, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;->ORIGINAL_FILTER:Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;

    invoke-virtual {v1}, Lcom/facebook/katana/features/imagefilters/ImageFilterManager$Filters;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
