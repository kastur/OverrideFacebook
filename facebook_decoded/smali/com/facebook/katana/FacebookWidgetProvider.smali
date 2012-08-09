.class public Lcom/facebook/katana/FacebookWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "FacebookWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-static {p1, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    const v1, 0x7f0b03d5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p1, v3, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;II)V

    .line 37
    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    const v0, 0x7f0b03d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b03d3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
