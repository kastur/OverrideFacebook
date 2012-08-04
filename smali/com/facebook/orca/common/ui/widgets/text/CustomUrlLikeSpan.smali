.class public Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;
.super Landroid/text/style/URLSpan;
.source "CustomUrlLikeSpan.java"


# instance fields
.field private a:Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;->a:Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;

    .line 33
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;->a:Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;->a:Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;->a()V

    .line 40
    :cond_0
    return-void
.end method
