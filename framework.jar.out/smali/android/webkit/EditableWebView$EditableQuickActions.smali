.class Landroid/webkit/EditableWebView$EditableQuickActions;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;
.implements Landroid/webkit/WebView$WrapActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditableQuickActions"
.end annotation


# instance fields
.field private final BUTTON_ID_BLUE:I

.field private final BUTTON_ID_COPY:I

.field private final BUTTON_ID_CUT:I

.field private final BUTTON_ID_FONTSTYLE:I

.field private final BUTTON_ID_GREEN:I

.field private final BUTTON_ID_HIGHLIGHT:I

.field private final BUTTON_ID_IME:I

.field private final BUTTON_ID_OPEN_LINK:I

.field private final BUTTON_ID_PASTE:I

.field private final BUTTON_ID_PASTE_STYLE:I

.field private final BUTTON_ID_RED:I

.field private final BUTTON_ID_SELECT:I

.field private final BUTTON_ID_UNHIGHLIGHT:I

.field private final BUTTON_ID_YELLOW:I

.field private final G_EXTEND:I

.field private final G_HIGHLIGHT:I

.field private final G_MOVABLE:I

.field private final SELECT_FONT_ALIGNMENT:I

.field private final SELECT_FONT_ALIGNMENT_JUSTIFY:I

.field private final SELECT_FONT_ALIGNMENT_LEFT:I

.field private final SELECT_FONT_ALIGNMENT_RIGHT:I

.field private final SELECT_FONT_COLOR:I

.field private final SELECT_FONT_COLOR_BLACK:I

.field private final SELECT_FONT_COLOR_BLUE:I

.field private final SELECT_FONT_COLOR_GRAY:I

.field private final SELECT_FONT_COLOR_GREEN:I

.field private final SELECT_FONT_COLOR_RED:I

.field private final SELECT_FONT_COLOR_WHITE:I

.field private final SELECT_FONT_COLOR_YELLOW:I

.field private final SELECT_FONT_NONE:I

.field private final SELECT_FONT_SETTINGS:I

.field private final SELECT_FONT_SETTINGS_BOLDFACE:I

.field private final SELECT_FONT_SETTINGS_ITALIC:I

.field private final SELECT_FONT_SETTINGS_UNDERLINE:I

.field private final SELECT_FONT_SIZE:I

.field private final SELECT_FONT_SIZE_LARGE:I

.field private final SELECT_FONT_SIZE_LARGEST:I

.field private final SELECT_FONT_SIZE_LARGEST_PX:I

.field private final SELECT_FONT_SIZE_LARGE_PX:I

.field private final SELECT_FONT_SIZE_MEDIUM:I

.field private final SELECT_FONT_SIZE_MEDIUM_PX:I

.field private final SELECT_FONT_SIZE_SMALL:I

.field private final SELECT_FONT_SIZE_SMALLEST:I

.field private final SELECT_FONT_SIZE_SMALLEST_PX:I

.field private final SELECT_FONT_SIZE_SMALL_PX:I

.field bFontBold:Z

.field bFontItalic:Z

.field bFontUnderline:Z

.field private cancellistener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

.field public dialog_font_style:Lcom/htc/dialog/HtcAlertDialog;

.field public dialog_font_style_alignment:Lcom/htc/dialog/HtcAlertDialog;

.field public dialog_font_style_fontcolor:Lcom/htc/dialog/HtcAlertDialog;

.field public dialog_font_style_fontsize:Lcom/htc/dialog/HtcAlertDialog;

.field public dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;

.field fWebViewTextScale:F

.field highlightMode:Z

.field icon_blue:Landroid/graphics/drawable/Drawable;

.field icon_copy:Landroid/graphics/drawable/Drawable;

.field icon_cut:Landroid/graphics/drawable/Drawable;

.field icon_font_style:Landroid/graphics/drawable/Drawable;

.field icon_green:Landroid/graphics/drawable/Drawable;

.field icon_highlight:Landroid/graphics/drawable/Drawable;

.field icon_ime_switch:Landroid/graphics/drawable/Drawable;

.field icon_open_link:Landroid/graphics/drawable/Drawable;

.field icon_paste:Landroid/graphics/drawable/Drawable;

.field icon_paste_styled:Landroid/graphics/drawable/Drawable;

.field icon_red:Landroid/graphics/drawable/Drawable;

.field icon_select:Landroid/graphics/drawable/Drawable;

.field icon_unhighlight:Landroid/graphics/drawable/Drawable;

.field icon_yellow:Landroid/graphics/drawable/Drawable;

.field mActionMode:Landroid/view/ActionMode;

.field m_bFontStyleKeyUpDown:Z

.field private final m_nBlackColor_select:I

.field m_nBlueColor:I

.field private final m_nBlueColor_select:I

.field private final m_nGrayColor_select:I

.field m_nGreenColor:I

.field private final m_nGreenColor_select:I

.field m_nRedColor:I

.field private final m_nRedColor_select:I

.field private final m_nWhiteColor_select:I

.field m_nYellowColor:I

.field private final m_nYellowColor_select:I

.field menuCopy:Landroid/view/MenuItem;

.field menuQuikckLookup:Landroid/view/MenuItem;

.field private resLoaded:Z

.field showQuickLookup:Z

.field str_blue:Ljava/lang/String;

.field str_copy:Ljava/lang/String;

.field str_cut:Ljava/lang/String;

.field str_font_style:Ljava/lang/String;

.field str_green:Ljava/lang/String;

.field str_highlight:Ljava/lang/String;

.field str_ime_switch:Ljava/lang/String;

.field str_open_link:Ljava/lang/String;

.field str_paste:Ljava/lang/String;

.field str_paste_styled:Ljava/lang/String;

.field str_red:Ljava/lang/String;

.field str_select:Ljava/lang/String;

.field str_unhighlight:Ljava/lang/String;

.field str_yellow:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 1617
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1618
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->G_EXTEND:I

    .line 1619
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->G_MOVABLE:I

    .line 1620
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->G_HIGHLIGHT:I

    .line 1622
    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_COPY:I

    .line 1623
    const/16 v0, 0x9

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_CUT:I

    .line 1624
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_SELECT:I

    .line 1625
    const/16 v0, 0xb

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_PASTE:I

    .line 1626
    const/16 v0, 0xc

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_PASTE_STYLE:I

    .line 1627
    const/16 v0, 0xd

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_IME:I

    .line 1628
    const/16 v0, 0xe

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_OPEN_LINK:I

    .line 1629
    const/16 v0, 0xf

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_HIGHLIGHT:I

    .line 1630
    const/16 v0, 0x10

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_GREEN:I

    .line 1631
    const/16 v0, 0x11

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_BLUE:I

    .line 1632
    const/16 v0, 0x12

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_YELLOW:I

    .line 1633
    const/16 v0, 0x13

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_RED:I

    .line 1634
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_UNHIGHLIGHT:I

    .line 1637
    const/16 v0, 0x15

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_FONTSTYLE:I

    .line 1640
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE:I

    .line 1641
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR:I

    .line 1642
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS:I

    .line 1643
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT:I

    .line 1644
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_NONE:I

    .line 1647
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_SMALLEST:I

    .line 1648
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_SMALL:I

    .line 1649
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_MEDIUM:I

    .line 1650
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGE:I

    .line 1651
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGEST:I

    .line 1653
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_SMALLEST_PX:I

    .line 1654
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_SMALL_PX:I

    .line 1655
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_MEDIUM_PX:I

    .line 1656
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGE_PX:I

    .line 1657
    const/4 v0, 0x6

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGEST_PX:I

    .line 1661
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_WHITE:I

    .line 1662
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_BLACK:I

    .line 1663
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_GRAY:I

    .line 1664
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_RED:I

    .line 1665
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_GREEN:I

    .line 1666
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_YELLOW:I

    .line 1667
    const/4 v0, 0x6

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_BLUE:I

    .line 1670
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS_UNDERLINE:I

    .line 1671
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS_BOLDFACE:I

    .line 1672
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS_ITALIC:I

    .line 1675
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT_LEFT:I

    .line 1676
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT_JUSTIFY:I

    .line 1677
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT_RIGHT:I

    .line 1685
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_bFontStyleKeyUpDown:Z

    .line 1686
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->fWebViewTextScale:F

    .line 1724
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I

    .line 1725
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I

    .line 1726
    const/16 v0, 0x7f

    const/16 v1, 0x7f

    const/16 v2, 0x7f

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I

    .line 1727
    invoke-static {v4, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I

    .line 1728
    invoke-static {v4, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I

    .line 1729
    invoke-static {v3, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I

    .line 1730
    invoke-static {v3, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I

    .line 1733
    const v0, 0xd0f7a7

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    .line 1734
    const v0, 0xa6e1ff

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    .line 1735
    const v0, 0xffef99

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    .line 1736
    const v0, 0xffa6a6

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    .line 1738
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 1740
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->resLoaded:Z

    .line 1997
    new-instance v0, Landroid/webkit/EditableWebView$EditableQuickActions$1;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$1;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->cancellistener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    .line 2326
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->showQuickLookup:Z

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1617
    invoke-direct {p0}, Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1617
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontStyle(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1617
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontsize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1617
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontcolor(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1617
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogSettings(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1617
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogAlignment(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/EditableWebView$EditableQuickActions;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1617
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->getFontSizeIdx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1617
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I

    return v0
.end method

.method static synthetic access$4200(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1617
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1617
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I

    return v0
.end method

.method static synthetic access$4400(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1617
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I

    return v0
.end method

.method static synthetic access$4500(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1617
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1617
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I

    return v0
.end method

.method static synthetic access$4700(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1617
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I

    return v0
.end method

.method private getDialogFontStyleContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 2265
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2266
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getFontSize()I

    move-result v0

    .line 2269
    .local v0, TextSize_current:I
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->GetOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2272
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->GetOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #context:Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 2274
    .restart local v1       #context:Landroid/content/Context;
    :cond_0
    return-object v1
.end method

.method private getFontColorIdx(I)I
    .locals 1
    .parameter "nFontcolor_current"

    .prologue
    .line 2302
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I

    if-ne p1, v0, :cond_0

    .line 2303
    const/4 v0, 0x0

    .line 2317
    :goto_0
    return v0

    .line 2304
    :cond_0
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I

    if-ne p1, v0, :cond_1

    .line 2305
    const/4 v0, 0x1

    goto :goto_0

    .line 2306
    :cond_1
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I

    if-ne p1, v0, :cond_2

    .line 2307
    const/4 v0, 0x2

    goto :goto_0

    .line 2308
    :cond_2
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I

    if-ne p1, v0, :cond_3

    .line 2309
    const/4 v0, 0x3

    goto :goto_0

    .line 2310
    :cond_3
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I

    if-ne p1, v0, :cond_4

    .line 2311
    const/4 v0, 0x4

    goto :goto_0

    .line 2312
    :cond_4
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I

    if-ne p1, v0, :cond_5

    .line 2313
    const/4 v0, 0x5

    goto :goto_0

    .line 2314
    :cond_5
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I

    if-ne p1, v0, :cond_6

    .line 2315
    const/4 v0, 0x6

    goto :goto_0

    .line 2317
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getFontSizeIdx(I)I
    .locals 3
    .parameter "nFontsize_current"

    .prologue
    .line 2278
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->GetOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2281
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    iget v0, v1, Landroid/webkit/WebSettings$TextSize;->value:I

    .line 2282
    .local v0, nWebViewTextScale:I
    int-to-float v1, v0

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->fWebViewTextScale:F

    .line 2283
    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->fWebViewTextScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2285
    .end local v0           #nWebViewTextScale:I
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2297
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 2287
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2289
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2291
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 2293
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 2295
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 2285
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadResource(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    const v6, 0x20805f5

    const v8, 0x104000b

    const/4 v7, 0x0

    .line 1743
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1746
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x20805f0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    .line 1747
    const v5, 0x1040001

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_copy:Ljava/lang/String;

    .line 1750
    const v5, 0x20805f1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_cut:Landroid/graphics/drawable/Drawable;

    .line 1751
    const v5, 0x1040003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_cut:Ljava/lang/String;

    .line 1754
    const v5, 0x20805f6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_select:Landroid/graphics/drawable/Drawable;

    .line 1756
    const v5, 0x1040016

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_select:Ljava/lang/String;

    .line 1759
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    .line 1760
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste:Ljava/lang/String;

    .line 1763
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste_styled:Landroid/graphics/drawable/Drawable;

    .line 1764
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Styled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste_styled:Ljava/lang/String;

    .line 1767
    const v5, 0x20809a5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_font_style:Landroid/graphics/drawable/Drawable;

    .line 1768
    const v5, 0x1040552

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_font_style:Ljava/lang/String;

    .line 1771
    const v5, 0x20805f2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_ime_switch:Landroid/graphics/drawable/Drawable;

    .line 1772
    const v5, 0x104039a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_ime_switch:Ljava/lang/String;

    .line 1774
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1778
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string/jumbo v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1779
    .local v4, target:Landroid/content/Intent;
    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1780
    .local v1, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1781
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1782
    .local v0, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    .line 1784
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string v5, "Open Link"

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_open_link:Ljava/lang/String;

    .line 1787
    const v5, 0x20805b1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_highlight:Landroid/graphics/drawable/Drawable;

    .line 1788
    const v5, 0x20c0216

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_highlight:Ljava/lang/String;

    .line 1791
    const v5, 0x20805b3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_green:Landroid/graphics/drawable/Drawable;

    .line 1792
    const v5, 0x20c0217

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_green:Ljava/lang/String;

    .line 1793
    const v5, 0x20a004c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    .line 1796
    const v5, 0x20805b2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_blue:Landroid/graphics/drawable/Drawable;

    .line 1797
    const v5, 0x20c0218

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_blue:Ljava/lang/String;

    .line 1798
    const v5, 0x20a004d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    .line 1801
    const v5, 0x20805b6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_yellow:Landroid/graphics/drawable/Drawable;

    .line 1802
    const v5, 0x20c0219

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_yellow:Ljava/lang/String;

    .line 1803
    const v5, 0x20a004e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    .line 1806
    const v5, 0x20805b4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_red:Landroid/graphics/drawable/Drawable;

    .line 1807
    const v5, 0x20c021a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_red:Ljava/lang/String;

    .line 1808
    const v5, 0x20a004f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    .line 1811
    const v5, 0x20805b5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_unhighlight:Landroid/graphics/drawable/Drawable;

    .line 1812
    const v5, 0x20c021b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_unhighlight:Ljava/lang/String;

    .line 1813
    return-void
.end method

.method private onCreateDialogAlignment(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2224
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_alignment:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 2226
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040557

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1070041

    const/4 v2, -0x1

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$12;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$12;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Landroid/webkit/EditableWebView$EditableQuickActions$11;

    invoke-direct {v2, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$11;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->cancellistener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_alignment:Lcom/htc/dialog/HtcAlertDialog;

    .line 2262
    :cond_0
    return-void
.end method

.method private onCreateDialogFontStyle(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2006
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 2007
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040553

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x107003d

    new-instance v2, Landroid/webkit/EditableWebView$EditableQuickActions$4;

    invoke-direct {v2, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$4;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Landroid/webkit/EditableWebView$EditableQuickActions$3;

    invoke-direct {v2, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$3;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Landroid/webkit/EditableWebView$EditableQuickActions$2;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$2;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style:Lcom/htc/dialog/HtcAlertDialog;

    .line 2059
    :cond_0
    return-void
.end method

.method private onCreateDialogFontcolor(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2114
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_fontcolor:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 2115
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040555

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x107003f

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getForeColor()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/webkit/EditableWebView$EditableQuickActions;->getFontColorIdx(I)I

    move-result v2

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$8;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$8;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Landroid/webkit/EditableWebView$EditableQuickActions$7;

    invoke-direct {v2, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$7;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->cancellistener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_fontcolor:Lcom/htc/dialog/HtcAlertDialog;

    .line 2162
    :cond_0
    return-void
.end method

.method private onCreateDialogFontsize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2062
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_fontsize:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 2063
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040554

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x107003e

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getFontSize()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/webkit/EditableWebView$EditableQuickActions;->getFontSizeIdx(I)I

    move-result v2

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$6;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$6;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Landroid/webkit/EditableWebView$EditableQuickActions$5;

    invoke-direct {v2, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$5;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->cancellistener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_fontsize:Lcom/htc/dialog/HtcAlertDialog;

    .line 2111
    :cond_0
    return-void
.end method

.method private onCreateDialogSettings(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2166
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v1, :cond_0

    .line 2167
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getUnderlineState()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    .line 2168
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getBoldState()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    .line 2169
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getItalicState()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    .line 2170
    const/4 v1, 0x3

    new-array v0, v1, [Z

    iget-boolean v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x2

    iget-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    aput-boolean v2, v0, v1

    .line 2172
    .local v0, tmpboolarray:[Z
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040556

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1070040

    new-instance v4, Landroid/webkit/EditableWebView$EditableQuickActions$10;

    invoke-direct {v4, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$10;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v4, Landroid/webkit/EditableWebView$EditableQuickActions$9;

    invoke-direct {v4, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$9;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->cancellistener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;

    .line 2221
    .end local v0           #tmpboolarray:[Z
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 2167
    goto :goto_0

    :cond_2
    move v1, v3

    .line 2168
    goto :goto_1

    :cond_3
    move v1, v3

    .line 2169
    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 2529
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2530
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2532
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 2515
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2355
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 7
    .parameter "actions"

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1816
    iget-boolean v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->resLoaded:Z

    if-nez v0, :cond_0

    .line 1817
    iput-boolean v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->resLoaded:Z

    .line 1818
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/EditableWebView;->access$3000(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/EditableWebView$EditableQuickActions;->loadResource(Landroid/content/Context;)V

    .line 1820
    :cond_0
    const/16 v0, 0x8

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_copy:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1821
    const/16 v0, 0x9

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_cut:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_cut:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1822
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v6, v0, v1}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1824
    const/16 v0, 0xf

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_highlight:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_highlight:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1827
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "3.5"

    if-eq v0, v1, :cond_1

    .line 1828
    const/16 v0, 0x15

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_font_style:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_font_style:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1833
    :cond_1
    const/16 v0, 0xa

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_select:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_select:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1834
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v6, v0, v1}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1836
    const/16 v0, 0xd

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_ime_switch:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_ime_switch:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1837
    const/16 v0, 0xe

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_open_link:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1840
    const/16 v0, 0x10

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_green:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_green:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1841
    const/16 v0, 0x11

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_blue:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_blue:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1842
    const/16 v0, 0x12

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_yellow:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_yellow:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1843
    const/16 v0, 0x13

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_red:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_red:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1844
    const/16 v0, 0x14

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_unhighlight:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_unhighlight:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 1845
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2521
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v0, v1, :cond_0

    .line 2522
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2523
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2420
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 9
    .parameter "actions"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1848
    invoke-interface {p1, v5, v5}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 1849
    invoke-interface {p1, v8, v5}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 1850
    invoke-interface {p1, v4, v5}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 1852
    const/4 v2, 0x0

    .line 1853
    .local v2, groupID:I
    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v6, v6, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v6}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v6

    sget-object v7, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v6, v7, :cond_4

    .line 1854
    iget-boolean v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    if-eqz v6, :cond_3

    move v2, v4

    .line 1859
    :goto_0
    invoke-interface {p1, v2, v8}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 1862
    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    const-string/jumbo v6, "text/plain"

    invoke-virtual {v4, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ne v4, v8, :cond_1

    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1868
    :cond_0
    const/16 v4, 0xb

    invoke-interface {p1, v2, v4}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 1869
    .local v0, a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_1

    .line 1870
    invoke-interface {v0, v5}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 1883
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_1
    const/16 v4, 0xe

    invoke-interface {p1, v2, v4}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v1

    .line 1884
    .local v1, aLink:Lcom/htc/textselection/Action;
    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v4, :cond_5

    const-string v3, ""

    .line 1885
    .local v3, href:Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1886
    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    #setter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/webkit/EditableWebView;->access$3102(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1887
    if-eqz v1, :cond_2

    .line 1888
    invoke-interface {v1, v8}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 1902
    :cond_2
    :goto_2
    return-void

    .end local v1           #aLink:Lcom/htc/textselection/Action;
    .end local v3           #href:Ljava/lang/String;
    :cond_3
    move v2, v5

    .line 1854
    goto :goto_0

    .line 1856
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 1884
    .restart local v1       #aLink:Lcom/htc/textselection/Action;
    :cond_5
    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mEditingNode:I
    invoke-static {v6}, Landroid/webkit/EditableWebView;->access$2800(Landroid/webkit/EditableWebView;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/webkit/HTCWebCore;->nativeGetHREF(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1890
    .restart local v3       #href:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const-string v6, ""

    #setter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v4, v6}, Landroid/webkit/EditableWebView;->access$3102(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1891
    if-eqz v1, :cond_2

    .line 1892
    invoke-interface {v1, v5}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_2
.end method

.method public onQuickActionItemClicked(I)V
    .locals 8
    .parameter "actionID"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1905
    packed-switch p1, :pswitch_data_0

    .line 1992
    :cond_0
    :goto_0
    const/16 v3, 0xf

    if-eq v3, p1, :cond_1

    .line 1993
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3, v7}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 1994
    :cond_1
    return-void

    .line 1907
    :pswitch_0
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Landroid/webkit/EditableWebView;->copy()V

    goto :goto_0

    .line 1910
    :pswitch_1
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Landroid/webkit/EditableWebView;->cut()V

    goto :goto_0

    .line 1913
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto :goto_0

    .line 1918
    :pswitch_3
    invoke-direct {p0}, Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontStyle(Landroid/content/Context;)V

    .line 1919
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    goto :goto_0

    .line 1923
    :pswitch_4
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto :goto_0

    .line 1926
    :pswitch_5
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/16 v4, 0x73

    invoke-virtual {v3, v4}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1927
    .local v1, r:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    goto :goto_0

    .line 1946
    .end local v1           #r:Landroid/graphics/Rect;
    :pswitch_6
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$3200(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 1952
    :pswitch_7
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$3100(Landroid/webkit/EditableWebView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$3100(Landroid/webkit/EditableWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$3100(Landroid/webkit/EditableWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1953
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$3100(Landroid/webkit/EditableWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1954
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1955
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1956
    const-string v3, "KENLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/EditableWebView;->access$3300(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1961
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_8
    iput-boolean v6, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 1962
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1963
    .restart local v1       #r:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3, v1}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 1964
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v3, v3, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v3, v1, v7}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    .line 1967
    .end local v1           #r:Landroid/graphics/Rect;
    :pswitch_9
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v6, v3, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 1968
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    iput v4, v3, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 1969
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    invoke-virtual {v3, v4, v6}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 1972
    :pswitch_a
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v6, v3, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 1973
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    iput v4, v3, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 1974
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    invoke-virtual {v3, v4, v6}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 1977
    :pswitch_b
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v6, v3, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 1978
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    iput v4, v3, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 1979
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    invoke-virtual {v3, v4, v6}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 1982
    :pswitch_c
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v6, v3, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 1983
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    iput v4, v3, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 1984
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    invoke-virtual {v3, v4, v6}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 1987
    :pswitch_d
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v6, v3, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 1988
    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v4}, Landroid/webkit/EditableWebView;->getBackColor()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 1905
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_3
    .end packed-switch
.end method
