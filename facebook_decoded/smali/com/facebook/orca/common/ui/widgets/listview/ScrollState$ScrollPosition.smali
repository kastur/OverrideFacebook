.class public final enum Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;
.super Ljava/lang/Enum;
.source "ScrollState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

.field public static final enum BOTTOM:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

.field public static final enum MIDDLE:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

.field public static final enum TOP:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->BOTTOM:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    .line 21
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->TOP:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    .line 22
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->MIDDLE:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->BOTTOM:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->TOP:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->MIDDLE:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    invoke-virtual {v0}, [Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    return-object v0
.end method
