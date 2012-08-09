.class public final enum Lcom/facebook/katana/features/composer/TimeAdapter$Period;
.super Ljava/lang/Enum;
.source "TimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/features/composer/TimeAdapter$Period;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/features/composer/TimeAdapter$Period;

.field public static final enum NOW:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

.field public static final enum SATURDAY:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

.field public static final enum SUNDAY:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

.field public static final enum TOMORROW:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

.field public static final enum TONIGHT:Lcom/facebook/katana/features/composer/TimeAdapter$Period;


# instance fields
.field private final SECONDS_IN_DAY:J

.field private final mGranularity:I

.field private final mPeriodNameRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 29
    new-instance v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    const-string v1, "NOW"

    const v2, 0x7f0b0395

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->NOW:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    .line 30
    new-instance v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    const-string v1, "TONIGHT"

    const v2, 0x7f0b0392

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->TONIGHT:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    .line 31
    new-instance v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    const-string v1, "TOMORROW"

    const v2, 0x7f0b038e

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->TOMORROW:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    .line 32
    new-instance v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    const-string v1, "SATURDAY"

    const v2, 0x7f0b0393

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->SATURDAY:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    .line 33
    new-instance v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    const-string v1, "SUNDAY"

    const v2, 0x7f0b0394

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->SUNDAY:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    sget-object v1, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->NOW:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->TONIGHT:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->TOMORROW:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->SATURDAY:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->SUNDAY:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    aput-object v1, v0, v7

    sput-object v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->$VALUES:[Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->SECONDS_IN_DAY:J

    .line 40
    iput p3, p0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->mPeriodNameRes:I

    .line 41
    iput p4, p0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->mGranularity:I

    .line 42
    return-void
.end method

.method public static createPeriodsTimeAdapter(Landroid/content/Context;)Lcom/facebook/katana/features/composer/TimeAdapter;
    .locals 2
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/facebook/katana/features/composer/TimeAdapter;

    invoke-static {}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->values()[Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/features/composer/TimeAdapter;-><init>(Landroid/content/Context;[Lcom/facebook/katana/features/composer/TimeAdapter$Period;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/features/composer/TimeAdapter$Period;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/features/composer/TimeAdapter$Period;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->$VALUES:[Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    invoke-virtual {v0}, [Lcom/facebook/katana/features/composer/TimeAdapter$Period;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    return-object v0
.end method


# virtual methods
.method public final getGranularity()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->mGranularity:I

    return v0
.end method

.method public final getTimestamp()J
    .locals 8

    .prologue
    const-wide/32 v6, 0x15180

    const/4 v0, 0x7

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    .line 61
    sget-object v4, Lcom/facebook/katana/features/composer/TimeAdapter$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-wide v0, v1

    .line 70
    :goto_0
    return-wide v0

    .line 63
    :pswitch_0
    add-long v0, v1, v6

    .line 64
    goto :goto_0

    .line 67
    :pswitch_1
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 68
    sget-object v4, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->SATURDAY:Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    if-ne p0, v4, :cond_0

    .line 69
    :goto_1
    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x7

    rem-int/lit8 v0, v0, 0x7

    int-to-long v3, v0

    mul-long/2addr v3, v6

    add-long v0, v1, v3

    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final localizedString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->mPeriodNameRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
