.class public Lcom/facebook/orca/threadview/ThreadTitleHeader;
.super Lcom/facebook/orca/activity/CustomView;
.source "ThreadTitleHeader.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

.field private c:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

.field private d:Lcom/facebook/orca/presence/PresenceState;

.field private e:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 27
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    .line 43
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b()V

    .line 44
    return-void
.end method

.method private a(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    if-ne v0, p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b(Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadTitleHeader;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a(Lcom/facebook/orca/presence/PresenceState;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 61
    const-class v1, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    .line 63
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_title_header:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a(I)V

    .line 64
    sget v0, Lcom/facebook/orca/R$id;->thread_title_header_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    .line 65
    sget v0, Lcom/facebook/orca/R$id;->thread_title_header_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    .line 67
    new-instance v0, Lcom/facebook/orca/threadview/ThreadTitleHeader$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadTitleHeader$1;-><init>(Lcom/facebook/orca/threadview/ThreadTitleHeader;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->e:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->e:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper$Listener;)V

    .line 74
    return-void
.end method

.method private b(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    .line 91
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c()V

    .line 92
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceState;->a()Lcom/facebook/orca/presence/Availability;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/presence/Availability;->AVAILABLE:Lcom/facebook/orca/presence/Availability;

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_online_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceState;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_mobile_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomView;->onAttachedToWindow()V

    .line 49
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Z)V

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->c()Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b(Lcom/facebook/orca/presence/PresenceState;)V

    .line 51
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomView;->onDetachedFromWindow()V

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Z)V

    .line 57
    return-void
.end method

.method public setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setData(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;->c()Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b(Lcom/facebook/orca/presence/PresenceState;)V

    .line 80
    return-void
.end method
