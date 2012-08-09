.class public final enum Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
.super Ljava/lang/Enum;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

.field public static final enum EVENTS_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

.field public static final enum MAILBOX_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

.field public static final enum MONTH_DAY_YEAR_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

.field public static final enum STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

.field public static final enum WEEK_DAY_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    const-string v1, "WEEK_DAY_STYLE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->WEEK_DAY_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    .line 35
    new-instance v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    const-string v1, "STREAM_RELATIVE_STYLE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    .line 36
    new-instance v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    const-string v1, "MAILBOX_RELATIVE_STYLE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MAILBOX_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    .line 37
    new-instance v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    const-string v1, "MONTH_DAY_YEAR_STYLE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MONTH_DAY_YEAR_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    .line 38
    new-instance v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    const-string v1, "EVENTS_RELATIVE_STYLE"

    invoke-direct {v0, v1, v6}, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->EVENTS_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    sget-object v1, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->WEEK_DAY_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MAILBOX_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MONTH_DAY_YEAR_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->EVENTS_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->$VALUES:[Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->$VALUES:[Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    invoke-virtual {v0}, [Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    return-object v0
.end method
